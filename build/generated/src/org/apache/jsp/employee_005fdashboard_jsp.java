package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class employee_005fdashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("     <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\">\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\t.jumbotron{\r\n");
      out.write("\t\tpadding: 10px;\r\n");
      out.write("\t\tfont-family: sans-serif;\r\n");
      out.write("\t\tbackground-color: #ED3196;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tp{\r\n");
      out.write("        color: white;\r\n");
      out.write("        font-weight: bolder;\r\n");
      out.write("        margin-top: -15px;\r\n");
      out.write("        font-style: italic;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t.well{\r\n");
      out.write("\t\tfont-size: 20px;\r\n");
      out.write("\t\tbackground-color: gold;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t.well:hover{\r\n");
      out.write("\t\tbackground-color: #ED3196;\r\n");
      out.write("\t\tcolor: white;\r\n");
      out.write("\t\tcursor: pointer;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\ta{\r\n");
      out.write("\t\ttext-decoration: none;\r\n");
      out.write("\t\tcolor: #000123;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\ta:hover{\r\n");
      out.write("\t\ttext-decoration: none;\r\n");
      out.write("\t\tcolor: white;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t.btn{\r\n");
      out.write("\t\tbackground-color: gold;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("     <title>Employee Dashboard</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"jumbotron\">\r\n");
      out.write("\t\t<h2 style=\"color: gold\">VRJ Soft CRM</h2>\r\n");
      out.write("\t\t<p>Digital Software Solution</p>\r\n");
      out.write("                ");

                          String sess_name=(String)session.getAttribute("user");
                          out.print("<h4>Welcome "+sess_name+"</h4>");
                
      out.write(" \r\n");
      out.write("\t</div>\r\n");
      out.write("    <a href=\"logout.jsp\">\r\n");
      out.write("\t<button class=\"btn btn-primary\">\r\n");
      out.write("\t\t Log Out\r\n");
      out.write("    </button>\r\n");
      out.write("        </a>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container-fluid text-center\">\r\n");
      out.write("    \t<h3>Employee Dashboard </h3>\r\n");
      out.write("\r\n");
      out.write("    \t<div class=\"row\">\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"new_client_enquiry.html\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tNew Client Enquiry\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"display_all_client_enquiry.jsp\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tDisplay All Client Enquiry\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("              \r\n");
      out.write("\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"display_client_followup.jsp\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t       Display Client Follow up\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"display_client_lead.jsp\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t      Display Client Lead\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("\r\n");
      out.write("    \t</div><!--end of 1st row-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"client_registration.html\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t   Client Registration Entry\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"display_registred_client.jsp\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tRegistered Client\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("              \r\n");
      out.write("\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"client_payment_entry.html\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tClient Payment Entry\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"display_client_payment_entry.jsp\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tDisplay Client Payment\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div><!--end of 2nd row-->\r\n");
      out.write("    \t</div>\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \t<div class=\"row\">\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"employee_vendor_payment.html\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t   Vendor payment Entry\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"display_employee_vendor_payment.jsp\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t       Display Vendor Payment\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("              \r\n");
      out.write("\r\n");
      out.write("    \t\t\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"employee_payment_entry.html\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tEmployee Payment Entry\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("\r\n");
      out.write("    \t\t\r\n");
      out.write("    \t\t<div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"display_employee_payment_entry.jsp\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tDisplay Employee Payment \r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"day_plan_entry.html\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tDay Plan Entry \r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"display_day_plan_entry.jsp\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tDisplay Day Plan \r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"employee_ticketing_entry.html\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tTicketing Entry \r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"col-sm-3\">\r\n");
      out.write("    \t\t\t<a href=\"display_employee_ticketing.jsp\">\r\n");
      out.write("    \t\t\t<div class=\"well\">\r\n");
      out.write("    \t\t\t\tDisplay Ticketing \r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("            \r\n");
      out.write("        </div><!--end of 3rd row-->\r\n");
      out.write("    \t\r\n");
      out.write("    </div>\t\t<!--end of container fluid-->\r\n");
      out.write("\t\t\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
