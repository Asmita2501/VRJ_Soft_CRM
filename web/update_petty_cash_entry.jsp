<%@ page import="java.sql.*"%>

<%
    int id=Integer.parseInt(request.getParameter("p_id"));//hidden userid
    
    String p_date=request.getParameter("p_date");
    String d_name=request.getParameter("d_name");
    
    String p_name=request.getParameter("p_name");
    int rate=Integer.parseInt(request.getParameter("rate"));
    
    int qty=Integer.parseInt(request.getParameter("qty"));
    int bill=Integer.parseInt(request.getParameter("bill"));
    
    String entry_by=request.getParameter("entry_by");
    String purpose=request.getParameter("purpose");
    
    
    try{
    
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
            
            
            String sql="Update petty_cash set PURCHASE_DATE=?,DEPARTMENT_NAME=?,PRODUCT_NAME=?,RATE=?,QUANTITY=?,BILL=?,ENTRY_BY=?,PURPOSE=? where pid=" +id;
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,p_date);
            ps.setString(2, d_name);
            ps.setString(3, p_name);
            ps.setInt(4, rate);
            ps.setInt(5, qty);
            ps.setInt(6, bill);
            ps.setString(7, entry_by);
            ps.setString(8, purpose);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                //out.print("Record Updated Successfully");
                response.sendRedirect("display_petty_cash.jsp");
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
    
    