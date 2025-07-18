package controller;

import model.Customer;
import service.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class CustomerSearchServlet extends HttpServlet {

    private CustomerService service = new CustomerService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String searchType = request.getParameter("searchType");
        String query = request.getParameter("query");

        Customer result = null;
        if ("id".equals(searchType)) {
            try {
                int id = Integer.parseInt(query);
                result = service.searchById(id);
            } catch (NumberFormatException e) {
                result = null;
            }
        } else if ("firstName".equals(searchType)) {
            result = service.searchByFirstName(query);
        } else if ("lastName".equals(searchType)) {
            result = service.searchByLastName(query);
        }

        request.setAttribute("customer", result);
        RequestDispatcher dispatcher = request.getRequestDispatcher("search_result.jsp");
        dispatcher.forward(request, response);
    }
}
