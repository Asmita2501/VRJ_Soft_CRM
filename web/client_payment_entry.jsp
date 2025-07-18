<%@ page import="java.sql.*;"%>

<%
    String entry_date=request.getParameter("entry_date");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String phoneno=request.getParameter("phoneno");
    String business_nature=request.getParameter("business_nature");
    int payment_amt=Integer.parseInt(request.getParameter("payment_amt"));
    String payment_mode=request.getParameter("payment_mode");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
        
        Statement stmt=con.createStatement();
        
        int i=stmt.executeUpdate("insert into client_payment_entry(ENTRY_DATE,FIRST_NAME,LAST_NAME,PHONE_NO,BUSINESS_NATURE,PAYMENT_AMOUNT,PAYMENT_MODE)values('"+entry_date+"','"+fname+"','"+lname+"','"+phoneno+"','"+business_nature+"','"+payment_amt+"','"+payment_mode+"')");
        
//        out.println("<br><br><br>");
//        out.println("<center>");
//        out.println("<h2><font color='limegreen'>Data Submitted Successfully</h2></font>");
//        out.println("<a href=client_payment_entry.html>Client Payment Entry </a>");
//        out.println("<a href=display_payment_entry.jsp>Payment Entry Details </a>");
//        out.println("<br><br><br>");
          response.sendRedirect("display_payment_entry.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>    
        
       