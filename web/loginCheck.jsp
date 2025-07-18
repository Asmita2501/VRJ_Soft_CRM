<%@ page import="java.sql.*;"%>

<%
    String username=request.getParameter("uname");  //  admin
    String password=request.getParameter("pass");  //  admin123
    
    try{
        Class.forName("com.mysql.jdbc.Driver");  // Driver Register for DB connectivity
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");  // connect to db
        
        Statement stmt=con.createStatement(); 
        //  This md use con  object to create stm object then stm object we can use  to fetch data from db
        
        String sql="select * from users where uname='"+username+"' and pass='"+password+"'";
        ResultSet rs=stmt.executeQuery(sql);
        
        String userx="";
        String passx="";
        while(rs.next())
        {
           userx=rs.getString("uname");
           passx=rs.getString("pass");
        }
        if(userx.equals(username) && passx.equals(password))
        {
            response.sendRedirect("employee_dashboard.jsp");
            
           
            
            session.setAttribute("user",userx);  // set data to session variable
            
        }
        else if(username.equals("admin") && password.equals("admin@123"))
        {
            response.sendRedirect("admin_dashboard.jsp");
            session.setAttribute("user",username);  // set data to session variable
        }
        else
        {
              out.println("<h2><font color='black'><center>Invalid User</center></font></h2>");
           
        }
        
        
    }//end of try
    catch(Exception e)
    {
        System.out.println(e);
    }
%>   
