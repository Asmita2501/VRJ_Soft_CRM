<%@ page import="java.sql.*;"%>

<%
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
        
        Statement stmt=con.createStatement();
        
        int i=stmt.executeUpdate("insert into day_plan_entry(DATE,DAY,TIME,DETAILS,STATUS,REMARK,PLAN_BY)values('"+plan_date+"','"+plan_day+"','"+plan_time+"','"+task_detail+"','"+task_status+"','"+remark+"','"+plan_by+"')");
        
//        out.println("<br><br><br>");
//        out.println("<center>");
//        out.println("<h2><font color='limegreen'>Registration Done Successfully</font></h2>");
//        out.println("<a href='day_plan_entry.html'>Create New Entry</a>");
//        out.println("<a href='display_day_plan_entry.jsp'>Display Entry</a>");
//        out.println("</center>");
          response.sendRedirect("display_day_plan_entry.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>