<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Customer Search</title></head>
<body>
    <h2>Search Customer</h2>
    <form method="post" action="CustomerSearchServlet">
        Search by:
        <select name="searchType">
            <option value="id">ID</option>
            <option value="firstName">First Name</option>
            <option value="lastName">Last Name</option>
        </select><br><br>
        Query: <input type="text" name="query"/><br><br>
        <input type="submit" value="Search"/>
    </form>
</body>
</html>
