<%@ page import="java.sql.*"%>

<%
    int id=Integer.parseInt(request.getParameter("userid"));//hidden userid
    
    String entry_date=request.getParameter("entry_date");
    String d_name=request.getParameter("d_name");
    
    String client_name=request.getParameter("client_name");
    String project=request.getParameter("project");
    
    String issue=request.getParameter("issue");
    String handover=request.getParameter("handover");
    
    String remark=request.getParameter("remark");
    
    
    try{
    
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
            
            
            String sql="Update add_ticketing set ENTRY_DATE=?,DEPARTMENT_NAME=?,CLIENT_NAME=?,PROJECT=?,ISSUE=?,HANDOVER=?,REMARK=? where TICKETING_ID=" +id;
            
            PreparedStatement ps=con.prepareStatement(sql);
            
            ps.setString(1,entry_date);
            ps.setString(2, d_name);
            ps.setString(3, client_name);
            ps.setString(4, project);
            ps.setString(5, issue);
            ps.setString(6, handover);
            ps.setString(7, remark);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                //out.print("Record Updated Successfully");
                response.sendRedirect("display_ticketing.jsp");
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
    
    