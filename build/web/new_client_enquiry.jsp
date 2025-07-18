<%@ page import= "java.sql.*"%>

<%
    String enq_date=request.getParameter("enq_date");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String phoneno=request.getParameter("phoneno");
    String email=request.getParameter("email");
    String profession=request.getParameter("profession");
    String client_info=request.getParameter("client_info");
    String client_suggested_info=request.getParameter("client_suggested_info");
    String status=request.getParameter("status");
    
    try{
        
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
        
        Statement stmt=con.createStatement();
        
        int i=stmt.executeUpdate("insert into client_enquiry(ENQUIRY_DATE,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PROFESSION,CLIENT_INFORMATION,CLIENT_SUGGESTED_INFORMATION,STATUS)values('"+enq_date+"','"+fname+"','"+lname+"','"+phoneno+"','"+email+"','"+profession+"','"+client_info+"','"+client_suggested_info+"','"+status+"')");
       
        //out.println("<br><br><br>");
        //out.println("<center>");
        //out.println("<h2><font color='limegreen'>Submitted Successfully</font></h2>");
        //out.println("<br><br><br>");
        //out.println("<a href=new_client_enquiry.html>New Client Enquiry </a>");
        //out.println("<a href=display_all_client_enquiry.jsp>All Client Enquiry Details </a>");
        //out.println("<br><br><br>");
        response.sendRedirect("display_all_client_enquiry.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>    