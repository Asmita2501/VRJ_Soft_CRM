<%@ page import="java.sql.*"%>

<%
    int c_id =Integer.parseInt(request.getParameter("client_id"));//hidden userid
    
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
            
            
            String sql="Update client_payment_entry set ENTRY_DATE=?,FIRST_NAME=?,LAST_NAME=?,PHONE_NO=?,BUSINESS_NATURE=?,PAYMENT_AMOUNT=?,PAYMENT_MODE=? where client_id=" +c_id;
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,entry_date);
            ps.setString(2, fname);
            ps.setString(3, lname);
            ps.setString(4, phoneno);
            ps.setString(5, business_nature);
            ps.setInt(6, payment_amt);
            ps.setString(7, payment_mode);
           
            int i=ps.executeUpdate();
            if(i>0)
            {
                //out.print("Record Updated Successfully");
                response.sendRedirect("display_payment_entry.jsp");
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
    
    