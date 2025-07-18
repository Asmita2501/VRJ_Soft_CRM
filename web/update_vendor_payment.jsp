<%@page import="java.sql.*;"%>

<%
    int vendor_id =Integer.parseInt(request.getParameter("vendor_id"));//hidden userid
    
    
    String vendor_name=request.getParameter("vendor_name");
    String pay_date=request.getParameter("pay_date");
    
    int pay_amt=Integer.parseInt(request.getParameter("pay_amt"));
    String payment_mode=request.getParameter("payment_mode");
    
   String pay_by=request.getParameter("pay_by");
    
    
    try{
    
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
            
            
            String sql="Update vendor_payment_entry set VENDOR_NAME=?,PAYMENT_DATE=?,PAYMENT_AMOUNT=?,PAYMENT_MODE=?,PAYMENT_BY=?, where VENDOR_ID=" +vendor_id;
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,vendor_name);
            ps.setString(2, pay_date);
            ps.setInt(3, pay_amt);
            ps.setString(4, payment_mode);
            ps.setString(5, pay_by);
            
           
            int i=ps.executeUpdate();
            if(i>0)
            {
                //out.print("Record Updated Successfully");
                response.sendRedirect("display_employee_vendor_payment.jsp");
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
    
    