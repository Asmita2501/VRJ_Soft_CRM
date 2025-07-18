<%@page import="java.sql.*"%>

<%
    String pay_date=request.getParameter("pay_date");
    String pay_time=request.getParameter("pay_time");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    int pay_amt=Integer.parseInt(request.getParameter("pay_amt"));
    String job=request.getParameter("job");
    String payment_mode=request.getParameter("payment_mode");
    String incentive_amt=request.getParameter("incentive_amt");
    int final_pay_amt=Integer.parseInt(request.getParameter("final_pay_amt"));
    
    try{
        
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
        
        Statement stmt=con.createStatement();
        
        int i=stmt.executeUpdate("insert into employee_payment_entry(DATE,TIME,FIRST_NAME,LAST_NAME,AMOUNT,JOB,PAYMENT_MODE,INCENTIVE,FINAL_AMOUNT)values('"+pay_date+"','"+pay_time+"','"+fname+"','"+lname+"','"+pay_amt+"','"+job+"','"+payment_mode+"','"+incentive_amt+"','"+final_pay_amt+"')");
       
        response.sendRedirect("display_employee_payment_entry.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }


%>