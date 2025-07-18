<%@ page import="java.sql.*"%>

<%
    int emp_id =Integer.parseInt(request.getParameter("emp_id"));//hidden userid
    
    
    String pay_date=request.getParameter("pay_date");
    String pay_time=request.getParameter("pay_time");
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    int pay_amt=Integer.parseInt(request.getParameter("pay_amt"));
    String job=request.getParameter("job");
    
    String payment_mode=request.getParameter("payment_mode");
    String incentive_amt=request.getParameter("incentive_amt");
    
   int final_pay=Integer.parseInt(request.getParameter("final_pay"));
    
    
    try{
    
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
            
            
            String sql="Update employee_payment_entry set DATE=?,DATE=?,FIRST_NAME=?,LAST_NAME=?,AMOUNT=?,JOB=?,PAYMENT_MODE=?,INCENTIVE=?,FINAL_AMOUNT=? where EMP_ID=" +emp_id;
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,pay_date);
            ps.setString(2, pay_time);
            ps.setString(3, fname);
            ps.setString(4, lname);
            ps.setInt(5, pay_amt);
            ps.setString(6, job);
            ps.setString(7, payment_mode);
            ps.setString(8, incentive_amt);
            ps.setInt(9,final_pay);
            
           
            int i=ps.executeUpdate();
            if(i>0)
            {
                //out.print("Record Updated Successfully");
                response.sendRedirect("display_employee_payment_entry.jsp");
            }
            else
            {
                out.print("Update Fail..");
            }
            
}
catch(Exception e)
{
    System.out.println(e);
}


%>
    
    