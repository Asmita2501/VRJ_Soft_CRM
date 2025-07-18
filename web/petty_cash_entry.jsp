<%@page import="java.sql.*"%>

<%
    String purchase_date=request.getParameter("purchase_date");
    String dname=request.getParameter("dname");
    String product_name=request.getParameter("product_name");
    int rate=Integer.parseInt(request.getParameter("rate"));
    int qty=Integer.parseInt(request.getParameter("qty"));
    int bill=Integer.parseInt(request.getParameter("bill"));
    String entry_by=request.getParameter("entry_by");
    String purpose=request.getParameter("purpose");
    
try{
    
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vrj_soft_db","root","");
            
            Statement stmt=con.createStatement();
            
            int i=stmt.executeUpdate("insert into petty_cash(PURCHASE_DATE,DEPARTMENT_NAME,PRODUCT_NAME,RATE,QUANTITY,BILL,ENTRY_BY,PURPOSE)values('"+purchase_date+"','"+dname+"','"+product_name+"','"+rate+"','"+qty+"','"+bill+"','"+entry_by+"','"+purpose+"')");
         
            //out.println("<h2><font color='limegreen'>Submitted successfully</font></h2>");
            response.sendRedirect("display_petty_cash.jsp");
}
catch(Exception e)
{
    System.out.println(e);
}


%>
    