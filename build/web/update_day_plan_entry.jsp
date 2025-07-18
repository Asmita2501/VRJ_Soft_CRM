<%@ page import="java.sql.*"%>

<%
    int id=Integer.parseInt(request.getParameter("plan_id"));//hidden userid
    
    String plan_date=request.getParameter("plan_date");
    String plan_day=request.getParameter("plan_day");
    
    String plan_time=request.getParameter("plan_time");
    String task_detail=request.getParameter("task_detail");
    
    String task_status=request.getParameter("task_status");
    String remark=request.getParameter("remark");
    
    String plan_by=request.getParameter("plan_by");
    
    
    try{
    
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
            
            
            String sql="Update day_plan_entry set DATE=?,DAY=?,TIME=?,DETAILS=?,STATUS=?,REMARK=?,PLAN_BY=? where plan_id=" +id;
            
            PreparedStatement ps=con.prepareStatement(sql);
            
            ps.setString(1,plan_date);
            ps.setString(2, plan_day);
            ps.setString(3, plan_time);
            ps.setString(4, task_detail);
            ps.setString(5, task_status);
            ps.setString(6, remark);
            ps.setString(7, plan_by);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                //out.print("Record Updated Successfully");
                response.sendRedirect("display_day_plan_entry.jsp");
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
    
    