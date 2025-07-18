<%@ page import="java.sql.*;"%>

<%
    
    String vendor_name=request.getParameter("vendor_name");
    String pay_date=request.getParameter("pay_date");
    int pay_amt=Integer.parseInt(request.getParameter("pay_amt"));
    String payment_mode=request.getParameter("payment_mode");
    String pay_by=request.getParameter("pay_by");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
        
        Statement stmt=con.createStatement();
        
        int i=stmt.executeUpdate("insert into vendor_payment_entry(VENDOR_NAME,PAYMENT_DATE,PAYMENT_AMOUNT,PAYMENT_MODE,PAYMENT_BY)values('"+vendor_name+"','"+pay_date+"','"+pay_amt+"','"+payment_mode+"','"+pay_by+"')");
        
//        out.println("<br><br><br>");
//        out.println("<center>");
//        out.println("<h2><font color='limegreen'>Data Submitted successfully</h2></font>");
//        out.println("<a href=vendor_payment_entry.html>Vendor Payment Entry </a>");
//        out.println("<a href=display_vendor_payment_entry.jsp>Payment Entry Details </a>");
//        out.println("<br><br><br>");
          response.sendRedirect("display_employee_vendor_payment.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>    
        
       