package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class loginCheck_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

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

      out.write("   \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
