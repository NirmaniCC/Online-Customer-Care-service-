<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.DBConnect"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
		try {
			String id = request.getParameter("id");
			
			if (id != null) {
		    
		    Connection con = null;
		    Statement stmt = null;
		    ResultSet rs = null;
		    
		    con = DBConnect.getConnection();
		    stmt = (Statement) con.createStatement();
		    String query;
		    int rowsAffected;
		    
		    String checkTicketsQuery = "SELECT * FROM tickets WHERE users_user_id = '" + id + "'";
            rs = stmt.executeQuery(checkTicketsQuery);
            if (rs.next()) {
                // If tickets exist, delete them
                String deleteTicketsQuery = "DELETE FROM tickets WHERE users_user_id = '" + id + "'";
                rowsAffected = stmt.executeUpdate(deleteTicketsQuery);
            }
            
            // Check if the user has associated feedback
            String checkFeedbackQuery = "SELECT * FROM feedback WHERE users_user_id = '" + id + "'";
            rs = stmt.executeQuery(checkFeedbackQuery);
            if (rs.next()) {
                // If feedback exists, delete them
                String deleteFeedbackQuery = "DELETE FROM feedback WHERE users_user_id = '" + id + "'";
                rowsAffected = stmt.executeUpdate(deleteFeedbackQuery);
            }
		    
		   
		    	query = "delete from users where user_id = '" + id + "'";
		    	rowsAffected = stmt.executeUpdate(query);
		    	response.sendRedirect("users.jsp");
		    
		    
		    
		    
		   
		    
		    con.close();
		    
			}
		    
		    
		    
		} catch (Exception e) {
		    e.printStackTrace();
		}
	   
	    
		%>

</body>
</html>