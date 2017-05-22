/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author priyansh
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ajaxname extends HttpServlet {
 private static final long serialVersionUID = 1L;

 /**
  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
  */
 @Override
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  doPost(request,response);
 }

 /**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
    String UserID=null;
    UserID=request.getParameter("UserID");
     Connection myConn = null;
        
       PrintWriter out=response.getWriter();
        ResultSet theResult=null;
        String user = "root";
        String pass = "root";

        try {
            
           //STEP : Register JDBC driver
             Class.forName("com.mysql.jdbc.Driver");
            
            // 1. Get a connection to database
            myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/das", user, pass);

  
           
            // 2. Create a statement
            PreparedStatement theStatement = myConn.prepareStatement("select * from User where UserID=? ");

		//myRs=myStmt.executeQuery("select * from  where UserName='"+username+"' and Password='"+password+"'");
                theStatement.setString(1,UserID);
               
                theResult = theStatement.executeQuery();
                if(theResult.next()){
                     
            out.println("Not Available");
        }
          else{
              out.println("Available");
          
          }
		
		 myConn.close();
		}
		catch(Exception e){
                out.println(e);}
        
   
    
 }
}