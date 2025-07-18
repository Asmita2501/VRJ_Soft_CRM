<%@ page import="java.sql.*;"%>

<%
    String reg_date=request.getParameter("reg_date");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String phoneno=request.getParameter("phoneno");
    String email=request.getParameter("email");
    String profession=request.getParameter("profession");
    String client_info=request.getParameter("client_info");
    String c_name=request.getParameter("c_name");
    String c_address=request.getParameter("c_address");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
        
        Statement stmt=con.createStatement();
        
        int i=stmt.executeUpdate("insert into client_registration(REG_DATE,FIRST_NAME,LAST_NAME,PHONE_NO,EMAIL,PROFESSION,CLIENT_INFO,COMPANY_NAME,COMPANY_ADDRESS)values('"+reg_date+"','"+fname+"','"+lname+"','"+phoneno+"','"+email+"','"+profession+"','"+client_info+"','"+c_name+"','"+c_address+"')");
        
//        out.println("<br><br><br>");
//        out.println("<center>");
//        out.println("<h2><font color='limegreen'>Data Submitted successfully</h2></font>");
//        out.println("<a href=client_registration.html>Client Registration </a>");
//        out.println("<a href=display_registred_client.jsp>Client Registration Details </a>");
//        out.println("<br><br><br>");
          response.sendRedirect("display_registred_client.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>    
        
       