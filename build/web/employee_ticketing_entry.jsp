<%@ page import= "java.sql.*"%>

<%
    
    String entry_date=request.getParameter("entry_date");
    String dname=request.getParameter("dname");
    String client_name=request.getParameter("client_name");
    String project=request.getParameter("project");
    String issue=request.getParameter("issue");
    String handoverto=request.getParameter("handoverto");
    String remark=request.getParameter("remark");
    
    
try{
    
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
            
            Statement stmt=con.createStatement();
            
            int i=stmt.executeUpdate("insert into add_ticketing(ENTRY_DATE,DEPARTMENT_NAME,CLIENT_NAME,PROJECT,ISSUE,HANDOVER,REMARK)values('"+entry_date+"','"+dname+"','"+client_name+"','"+project+"','"+issue+"','"+handoverto+"','"+remark+"')");
         
            //out.println("<h2><font color='limegreen'>Submitted successfully</font></h2>");
            response.sendRedirect("display_employee_ticketing.jsp");
}
catch(Exception e)
{
    System.out.println(e);
}


%>
    