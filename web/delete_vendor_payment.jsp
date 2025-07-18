<%@ page import="java.sql.*;"%>

<%
    int id=Integer.parseInt(request.getParameter("id"));
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
        
        Statement stmt=con.createStatement();
        
        int i=stmt.executeUpdate("delete from vendor_payment_entry where VENDOR_ID=" +id);
        
        response.sendRedirect("display_vendor_payment_entry.jsp");
    }
    catch(Exception e)
    {
      System.out.println(e);
    }
 %>   