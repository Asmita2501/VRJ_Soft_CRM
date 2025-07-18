<%@ page import="java.sql.*"%>

<%
    int c_id =Integer.parseInt(request.getParameter("client_id"));//hidden userid
    
    String e_date=request.getParameter("e_date");
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
            
            
            String sql="Update client_enquiry set ENQUIRY_DATE=?,FIRST_NAME=?,LAST_NAME=?,PHONE_NUMBER=?,EMAIL=?,PROFESSION=?,CLIENT_INFORMATION=?,CLIENT_SUGGESTED_INFORMATION=?,STATUS=? where client_id=" +c_id;
            
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,e_date);
            ps.setString(2, fname);
            ps.setString(3, lname);
            ps.setString(4, phoneno);
            ps.setString(5, email);
            ps.setString(6, profession);
            ps.setString(7, client_info);
            ps.setString(8, client_suggested_info);
            ps.setString(9,status);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                //out.print("Record Updated Successfully");
                response.sendRedirect("display_all_client_enquiry.jsp");
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
    
    