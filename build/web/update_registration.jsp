<%@ page import="java.sql.*"%>

<%
    int c_id =Integer.parseInt(request.getParameter("client_id"));//hidden userid
    
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
            
            
            String sql="Update client_registration set REG_DATE=?,FIRST_NAME=?,LAST_NAME=?,PHONE_NO=?,EMAIL=?,PROFESSION=?,CLIENT_INFO=?,COMPANY_NAME=?,COMPANY_ADDRESS=? where client_id=" +c_id;
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,reg_date);
            ps.setString(2, fname);
            ps.setString(3, lname);
            ps.setString(4, phoneno);
            ps.setString(5, email);
            ps.setString(6, profession);
            ps.setString(7, client_info);
            ps.setString(8, c_name);
            ps.setString(9,c_address);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                //out.print("Record Updated Successfully");
                response.sendRedirect("display_registred_client.jsp");
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
    
    