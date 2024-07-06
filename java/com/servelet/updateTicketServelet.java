package com.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.TicketDao;

@WebServlet("/updateTicketServelet")
public class updateTicketServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public updateTicketServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ticketId = request.getParameter("id");
		
		String subject = request.getParameter("name");
        String description = request.getParameter("description");
		
		boolean isTrue;
		isTrue = TicketDao.updateTicket(ticketId, subject, description);
		
		if (isTrue == true) {
			response.sendRedirect("./profile.jsp");
		} else {
			response.sendRedirect("./addTicket.jsp");
		}

	}

}
