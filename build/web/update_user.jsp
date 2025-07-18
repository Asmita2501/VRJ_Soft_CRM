<%@ page import="java.sql.*"%>

<%
    int id=Integer.parseInt(request.getParameter("userid"));//hidden userid
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
    String phoneno=request.getParameter("phoneno");
    String email=request.getParameter("email");
    
    String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
    
    
    try{
    
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
            
            
            String sql="Update users set fname=?,lname=?,phoneno=?,email=?,uname=?,pass=? where userid=" +id;
            
            PreparedStatement ps=con.prepareStatement(sql);
            
            ps.setString(1,fname);
            ps.setString(2, lname);
            ps.setString(3, phoneno);
            ps.setString(4, email);
            ps.setString(5, uname);
            ps.setString(6, pass);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                //out.print("Record Updated Successfully");
                response.sendRedirect("display_user.jsp");
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
    
    