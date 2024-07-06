package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.TicketDao;


@WebServlet("/addTicketServelet")
public class addTicketServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public addTicketServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		
		String subject = request.getParameter("name");
		int categoryId = Integer.parseInt(request.getParameter("category"));
        String description = request.getParameter("description");
		
		boolean isTrue;
		isTrue = TicketDao.addTicket(userId, subject, categoryId, description);
		
		if (isTrue == true) {
			response.sendRedirect("./profile.jsp");
		} else {
			response.sendRedirect("./addTicket.jsp");
		}

	}

}
