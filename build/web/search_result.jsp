<%@ page import="model.Customer" %>
<html>
<head><title>Search Result</title></head>
<body>
    <h2>Search Result</h2>
    <%
        Customer customer = (Customer) request.getAttribute("customer");
        if (customer != null) {
    %>
        <p><b>ID:</b> <%= customer.getId() %></p>
        <p><b>First Name:</b> <%= customer.getFirstName() %></p>
        <p><b>Last Name:</b> <%= customer.getLastName() %></p>
    <%
        } else {
    %>
        <p>No customer found.</p>
    <%
        }
    %>
</body>
</html>
