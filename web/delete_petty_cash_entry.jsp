<%@page import="java.sql.*"%>

<%
int id=Integer.parseInt(request.getParameter("id"));


try{
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
            
            Statement stmt=con.createStatement();
            
            int i=stmt.executeUpdate("delete from petty_cash where pid="+id);
            response.sendRedirect("display_petty_cash.jsp");
            
           
            
            
    }  
     catch(Exception e)
    {
       System.out.print(e);
    }    
            
 %>           
            
            
            
            
            