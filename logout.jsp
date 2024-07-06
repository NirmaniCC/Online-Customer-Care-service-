<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Delete Patient</title>
</head>
<body>
	   <%
		if (request.getSession().getAttribute("userObj") != null) {
		    // If the "employeeObj" session attribute exists, remove it
		    request.getSession().removeAttribute("userObj");
		    // Redirect the user to the login page
		    response.sendRedirect("login.jsp");
		}
		%>

</body>
</html>
