<%@page import="java.sql.*"%>

<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String phoneno=request.getParameter("phoneno");
String email=request.getParameter("email");
String username=request.getParameter("uname");
String password=request.getParameter("pass");


try{
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
            
            Statement stmt=con.createStatement();
            
            int i=stmt.executeUpdate("insert into users(fname,lname,phoneno,email,uname,pass) values('"+fname+"','"+lname+"','"+phoneno+"','"+email+"','"+username+"','"+password+"')");
            
       // out.println("<br><br><br>");
        //out.println("<center>");
        //out.println("<h2><font color='limegreen'>Registration Done Successfully</font></h2>");
       // out.println("<a href='create_user.html'>Create New Entry</a>");
       // out.println("<a href='display_user.jsp'>Display User Entry</a>");
       // out.println("</center>");
            response.sendRedirect("display_user.jsp");
            
            
    }  
     catch(Exception e)
    {
       System.out.print(e);
    }    
            
 %>           
            
            
            
            
            